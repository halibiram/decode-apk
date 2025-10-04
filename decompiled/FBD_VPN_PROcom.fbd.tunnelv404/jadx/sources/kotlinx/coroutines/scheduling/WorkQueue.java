package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\fj\u0002`\r2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0014\u0010\u0006J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0015\u0010\u0006J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001e8\u0002X\u0082\u0004R\u000b\u0010!\u001a\u00020 8\u0002X\u0082\u0004R\u000b\u0010\"\u001a\u00020 8\u0002X\u0082\u0004R\u000b\u0010#\u001a\u00020 8\u0002X\u0082\u0004¨\u0006$"}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "", "<init>", "()V", "Lkotlinx/coroutines/scheduling/Task;", "poll", "()Lkotlinx/coroutines/scheduling/Task;", "task", "", "fair", "add", "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "", "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTaskRef", "", "trySteal", "(ILkotlin/jvm/internal/Ref$ObjectRef;)J", "pollBlocking", "pollCpu", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalQueue", "", "offloadAllWorkTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V", "getSize$kotlinx_coroutines_core", "()I", "size", "Lkotlinx/atomicfu/AtomicRef;", "lastScheduledTask", "Lkotlinx/atomicfu/AtomicInt;", "producerIndex", "consumerIndex", "blockingTasksInBuffer", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,251:1\n77#2:252\n77#2:253\n77#2:254\n77#2:257\n77#2:258\n1#3:255\n21#4:256\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n91#1:252\n158#1:253\n181#1:254\n201#1:257\n245#1:258\n201#1:256\n*E\n"})
/* loaded from: classes3.dex */
public final class WorkQueue {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2446x3271d0aa = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask$volatile");

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2447x1378447b = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex$volatile");

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2448x75d576dc = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex$volatile");

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2449x9738a56c = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer$volatile");
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final AtomicReferenceArray f2450xfbe0c504 = new AtomicReferenceArray(128);

    public static /* synthetic */ Task add$default(WorkQueue workQueue, Task task, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return workQueue.add(task, z);
    }

    @Nullable
    public final Task add(@NotNull Task task, boolean fair) {
        if (fair) {
            return m2369xfbe0c504(task);
        }
        Task task2 = (Task) f2446x3271d0aa.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return m2369xfbe0c504(task2);
    }

    public final int getSize$kotlinx_coroutines_core() {
        Object obj = f2446x3271d0aa.get(this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2448x75d576dc;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = f2447x1378447b;
        if (obj != null) {
            return (atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this)) + 1;
        }
        return atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this);
    }

    public final void offloadAllWorkTo(@NotNull GlobalQueue globalQueue) {
        Task task = (Task) f2446x3271d0aa.getAndSet(this, null);
        if (task != null) {
            globalQueue.addLast(task);
        }
        while (true) {
            Task m2370x3271d0aa = m2370x3271d0aa();
            if (m2370x3271d0aa == null) {
                return;
            } else {
                globalQueue.addLast(m2370x3271d0aa);
            }
        }
    }

    @Nullable
    public final Task poll() {
        Task task = (Task) f2446x3271d0aa.getAndSet(this, null);
        if (task == null) {
            return m2370x3271d0aa();
        }
        return task;
    }

    @Nullable
    public final Task pollBlocking() {
        return m2371x1378447b(true);
    }

    @Nullable
    public final Task pollCpu() {
        return m2371x1378447b(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [kotlinx.coroutines.scheduling.Task] */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlinx.coroutines.scheduling.Task] */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, kotlinx.coroutines.scheduling.Task, java.lang.Object] */
    public final long trySteal(int stealingMode, @NotNull Ref.ObjectRef<Task> stolenTaskRef) {
        boolean z;
        T t;
        int i;
        if (stealingMode == 3) {
            t = m2370x3271d0aa();
        } else {
            int i2 = f2448x75d576dc.get(this);
            int i3 = f2447x1378447b.get(this);
            if (stealingMode == 1) {
                z = true;
            } else {
                z = false;
            }
            while (i2 != i3 && (!z || f2449x9738a56c.get(this) != 0)) {
                int i4 = i2 + 1;
                t = m2372x75d576dc(i2, z);
                if (t != 0) {
                    break;
                }
                i2 = i4;
            }
            t = 0;
        }
        if (t != 0) {
            stolenTaskRef.element = t;
            return -1L;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2446x3271d0aa;
            ?? r5 = (Task) atomicReferenceFieldUpdater.get(this);
            if (r5 == 0) {
                break;
            }
            if (r5.taskContext) {
                i = 1;
            } else {
                i = 2;
            }
            if ((i & stealingMode) == 0) {
                break;
            }
            long nanoTime = TasksKt.schedulerTimeSource.nanoTime() - r5.submissionTime;
            long j = TasksKt.WORK_STEALING_TIME_RESOLUTION_NS;
            if (nanoTime < j) {
                return j - nanoTime;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, r5, null)) {
                if (atomicReferenceFieldUpdater.get(this) != r5) {
                    break;
                }
            }
            stolenTaskRef.element = r5;
            return -1L;
        }
        return -2L;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Task m2369xfbe0c504(Task task) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2447x1378447b;
        if (atomicIntegerFieldUpdater.get(this) - f2448x75d576dc.get(this) == 127) {
            return task;
        }
        if (task.taskContext) {
            f2449x9738a56c.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f2450xfbe0c504;
            if (atomicReferenceArray.get(i) != null) {
                Thread.yield();
            } else {
                atomicReferenceArray.lazySet(i, task);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Task m2370x3271d0aa() {
        Task task;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2448x75d576dc;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - f2447x1378447b.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (task = (Task) this.f2450xfbe0c504.getAndSet(i2, null)) != null) {
                if (task.taskContext) {
                    f2449x9738a56c.decrementAndGet(this);
                }
                return task;
            }
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Task m2371x1378447b(boolean z) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2446x3271d0aa;
            Task task = (Task) atomicReferenceFieldUpdater.get(this);
            if (task == null || task.taskContext != z) {
                break;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, task, null)) {
                if (atomicReferenceFieldUpdater.get(this) != task) {
                    break;
                }
            }
            return task;
        }
        int i = f2448x75d576dc.get(this);
        int i2 = f2447x1378447b.get(this);
        while (i != i2) {
            if (z && f2449x9738a56c.get(this) == 0) {
                return null;
            }
            i2--;
            Task m2372x75d576dc = m2372x75d576dc(i2, z);
            if (m2372x75d576dc != null) {
                return m2372x75d576dc;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        if (r6 == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
    
        kotlinx.coroutines.scheduling.WorkQueue.f2449x9738a56c.decrementAndGet(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r1.taskContext == r6) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if (r0.compareAndSet(r5, r1, null) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
    
        if (r0.get(r5) == r1) goto L16;
     */
    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Task m2372x75d576dc(int i, boolean z) {
        int i2 = i & 127;
        AtomicReferenceArray atomicReferenceArray = this.f2450xfbe0c504;
        Task task = (Task) atomicReferenceArray.get(i2);
        if (task != null) {
        }
        return null;
    }
}
