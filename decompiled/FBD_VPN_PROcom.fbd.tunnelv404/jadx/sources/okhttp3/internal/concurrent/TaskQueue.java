package okhttp3.internal.concurrent;

import defpackage.C1228xa20236f1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilJvmKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001KB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000f¢\u0006\u0004\b\r\u0010\u0011J7\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0013\u001a\u00020\u00122\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001c\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0012H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001d\u001a\u00020\f¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\f¢\u0006\u0004\b\u001f\u0010\u001eJ\u000f\u0010\"\u001a\u00020\u0012H\u0000¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010$R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010$R\u0017\u00101\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\"\u0010\u001f\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u0010!\"\u0004\b5\u00106R$\u0010=\u001a\u0004\u0018\u00010\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R \u0010C\u001a\b\u0012\u0004\u0012\u00020\b0>8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\"\u0010G\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bD\u00103\u001a\u0004\bE\u0010!\"\u0004\bF\u00106R\u0017\u0010J\u001a\b\u0012\u0004\u0012\u00020\b0H8F¢\u0006\u0006\u001a\u0004\bI\u0010B¨\u0006L"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue;", "", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "", "name", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V", "Lokhttp3/internal/concurrent/Task;", "task", "", "delayNanos", "", "schedule", "(Lokhttp3/internal/concurrent/Task;J)V", "Lkotlin/Function0;", "block", "(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V", "", "cancelable", "execute", "(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V", "Ljava/util/concurrent/CountDownLatch;", "idleLatch", "()Ljava/util/concurrent/CountDownLatch;", "recurrence", "scheduleAndDecide$okhttp", "(Lokhttp3/internal/concurrent/Task;JZ)Z", "scheduleAndDecide", "cancelAll", "()V", "shutdown", "cancelAllAndDecide$okhttp", "()Z", "cancelAllAndDecide", "toString", "()Ljava/lang/String;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/concurrent/TaskRunner;", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/lang/String;", "getName$okhttp", "Ljava/util/concurrent/locks/ReentrantLock;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Z", "getShutdown$okhttp", "setShutdown$okhttp", "(Z)V", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Lokhttp3/internal/concurrent/Task;", "getActiveTask$okhttp", "()Lokhttp3/internal/concurrent/Task;", "setActiveTask$okhttp", "(Lokhttp3/internal/concurrent/Task;)V", "activeTask", "", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Ljava/util/List;", "getFutureTasks$okhttp", "()Ljava/util/List;", "futureTasks", "뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋", "getCancelActiveTask$okhttp", "setCancelActiveTask$okhttp", "cancelActiveTask", "", "getScheduledTasks", "scheduledTasks", "땪돳디됨뎸돷됩뎨땔땦듻듨듻듟뒘둬뎸듸뎸둔됫듰뒉딃돤땀듌듔뒾땟땄딸돴땯딟땩뒾든뎽둠들듌되땤뒉둠딃딻땀둥딸땍뒼되딄돨듟뒉뒈뒹됴뒤딅돨땰듽땥땔땋뒾딁딞둔듸뒼뎻땸뒝두뎡땔돸두땔딜듌둥땱땠뎬득둘될듻딄땭뒨땲딝땝듬돵든돝뒛땨듐땹돠땝땣듨뒨딜둬뎸둣듟뒷땍뒐땭딨땻딀둔땪땨땟딅", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,226:1\n1#2:227\n26#3,4:228\n26#3,4:232\n26#3,4:236\n26#3,4:240\n26#3,4:259\n350#4,7:244\n327#5,4:251\n327#5,4:255\n*S KotlinDebug\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n*L\n69#1:228,4\n72#1:232,4\n161#1:236,4\n167#1:240,4\n216#1:259,4\n173#1:244,7\n187#1:251,4\n197#1:255,4\n*E\n"})
/* loaded from: classes3.dex */
public final class TaskQueue {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final TaskRunner taskRunner;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final String name;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final ReentrantLock lock;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public boolean shutdown;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public Task activeTask;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final ArrayList f3103x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters and from kotlin metadata */
    public boolean cancelActiveTask;

    public TaskQueue(@NotNull TaskRunner taskRunner, @NotNull String name) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(name, "name");
        this.taskRunner = taskRunner;
        this.name = name;
        this.lock = new ReentrantLock();
        this.f3103x9e171bf9 = new ArrayList();
    }

    public static /* synthetic */ void execute$default(TaskQueue taskQueue, String str, long j, boolean z, Function0 function0, int i, Object obj) {
        boolean z2;
        if ((i & 2) != 0) {
            j = 0;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            z2 = true;
        } else {
            z2 = z;
        }
        taskQueue.execute(str, j2, z2, function0);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, Task task, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.schedule(task, j);
    }

    public final void cancelAll() {
        ReentrantLock reentrantLock = this.lock;
        if (_UtilJvmKt.assertionsEnabled && reentrantLock.isHeldByCurrentThread()) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + reentrantLock);
        }
        TaskRunner taskRunner = this.taskRunner;
        ReentrantLock lock = taskRunner.getLock();
        lock.lock();
        try {
            if (cancelAllAndDecide$okhttp()) {
                taskRunner.kickCoordinator$okhttp(this);
            }
        } finally {
            lock.unlock();
        }
    }

    public final boolean cancelAllAndDecide$okhttp() {
        Task task = this.activeTask;
        if (task != null) {
            Intrinsics.checkNotNull(task);
            if (task.getCancelable()) {
                this.cancelActiveTask = true;
            }
        }
        ArrayList arrayList = this.f3103x9e171bf9;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((Task) arrayList.get(size)).getCancelable()) {
                Logger logger = this.taskRunner.getLogger();
                Task task2 = (Task) arrayList.get(size);
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.access$log(logger, task2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void execute(@NotNull final String name, long delayNanos, final boolean cancelable, @NotNull final Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        schedule(new Task(name, cancelable) { // from class: okhttp3.internal.concurrent.TaskQueue$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                block.invoke();
                return -1L;
            }
        }, delayNanos);
    }

    @Nullable
    /* renamed from: getActiveTask$okhttp, reason: from getter */
    public final Task getActiveTask() {
        return this.activeTask;
    }

    /* renamed from: getCancelActiveTask$okhttp, reason: from getter */
    public final boolean getCancelActiveTask() {
        return this.cancelActiveTask;
    }

    @NotNull
    public final List<Task> getFutureTasks$okhttp() {
        return this.f3103x9e171bf9;
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    @NotNull
    /* renamed from: getName$okhttp, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final List<Task> getScheduledTasks() {
        ReentrantLock lock = this.taskRunner.getLock();
        lock.lock();
        try {
            return CollectionsKt___CollectionsKt.toList(this.f3103x9e171bf9);
        } finally {
            lock.unlock();
        }
    }

    /* renamed from: getShutdown$okhttp, reason: from getter */
    public final boolean getShutdown() {
        return this.shutdown;
    }

    @NotNull
    /* renamed from: getTaskRunner$okhttp, reason: from getter */
    public final TaskRunner getTaskRunner() {
        return this.taskRunner;
    }

    @NotNull
    public final CountDownLatch idleLatch() {
        TaskRunner taskRunner = this.taskRunner;
        ReentrantLock lock = taskRunner.getLock();
        lock.lock();
        try {
            Task task = this.activeTask;
            ArrayList arrayList = this.f3103x9e171bf9;
            if (task == null && arrayList.isEmpty()) {
                return new CountDownLatch(0);
            }
            Task task2 = this.activeTask;
            if (task2 instanceof C1228xa20236f1) {
                return ((C1228xa20236f1) task2).f5631x9738a56c;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Task task3 = (Task) it.next();
                if (task3 instanceof C1228xa20236f1) {
                    return ((C1228xa20236f1) task3).f5631x9738a56c;
                }
            }
            C1228xa20236f1 c1228xa20236f1 = new C1228xa20236f1();
            if (scheduleAndDecide$okhttp(c1228xa20236f1, 0L, false)) {
                taskRunner.kickCoordinator$okhttp(this);
            }
            return c1228xa20236f1.f5631x9738a56c;
        } finally {
            lock.unlock();
        }
    }

    public final void schedule(@NotNull Task task, long delayNanos) {
        Intrinsics.checkNotNullParameter(task, "task");
        TaskRunner taskRunner = this.taskRunner;
        ReentrantLock lock = taskRunner.getLock();
        lock.lock();
        try {
            if (this.shutdown) {
                if (task.getCancelable()) {
                    Logger logger = taskRunner.getLogger();
                    if (logger.isLoggable(Level.FINE)) {
                        TaskLoggerKt.access$log(logger, task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                } else {
                    Logger logger2 = taskRunner.getLogger();
                    if (logger2.isLoggable(Level.FINE)) {
                        TaskLoggerKt.access$log(logger2, task, this, "schedule failed (queue is shutdown)");
                    }
                    throw new RejectedExecutionException();
                }
            }
            if (scheduleAndDecide$okhttp(task, delayNanos, false)) {
                taskRunner.kickCoordinator$okhttp(this);
            }
        } finally {
            lock.unlock();
        }
    }

    public final boolean scheduleAndDecide$okhttp(@NotNull Task task, long delayNanos, boolean recurrence) {
        String str;
        Intrinsics.checkNotNullParameter(task, "task");
        task.initQueue$okhttp(this);
        TaskRunner taskRunner = this.taskRunner;
        long nanoTime = taskRunner.getBackend().nanoTime();
        long j = nanoTime + delayNanos;
        ArrayList arrayList = this.f3103x9e171bf9;
        int indexOf = arrayList.indexOf(task);
        if (indexOf != -1) {
            if (task.getNextExecuteNanoTime() <= j) {
                Logger logger = taskRunner.getLogger();
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.access$log(logger, task, this, "already scheduled");
                }
                return false;
            }
            arrayList.remove(indexOf);
        }
        task.setNextExecuteNanoTime$okhttp(j);
        Logger logger2 = taskRunner.getLogger();
        if (logger2.isLoggable(Level.FINE)) {
            if (recurrence) {
                str = "run again after " + TaskLoggerKt.formatDuration(j - nanoTime);
            } else {
                str = "scheduled after " + TaskLoggerKt.formatDuration(j - nanoTime);
            }
            TaskLoggerKt.access$log(logger2, task, this, str);
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (it.hasNext()) {
                if (((Task) it.next()).getNextExecuteNanoTime() - nanoTime > delayNanos) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1) {
            i = arrayList.size();
        }
        arrayList.add(i, task);
        if (i != 0) {
            return false;
        }
        return true;
    }

    public final void setActiveTask$okhttp(@Nullable Task task) {
        this.activeTask = task;
    }

    public final void setCancelActiveTask$okhttp(boolean z) {
        this.cancelActiveTask = z;
    }

    public final void setShutdown$okhttp(boolean z) {
        this.shutdown = z;
    }

    public final void shutdown() {
        ReentrantLock reentrantLock = this.lock;
        if (_UtilJvmKt.assertionsEnabled && reentrantLock.isHeldByCurrentThread()) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + reentrantLock);
        }
        TaskRunner taskRunner = this.taskRunner;
        ReentrantLock lock = taskRunner.getLock();
        lock.lock();
        try {
            this.shutdown = true;
            if (cancelAllAndDecide$okhttp()) {
                taskRunner.kickCoordinator$okhttp(this);
            }
        } finally {
            lock.unlock();
        }
    }

    @NotNull
    public String toString() {
        return this.name;
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, String str, long j, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.schedule(str, j, function0);
    }

    public final void schedule(@NotNull final String name, long delayNanos, @NotNull final Function0<Long> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        schedule(new Task(name) { // from class: okhttp3.internal.concurrent.TaskQueue$schedule$2
            {
                int i = 2;
                DefaultConstructorMarker defaultConstructorMarker = null;
                boolean z = false;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                return ((Number) block.invoke()).longValue();
            }
        }, delayNanos);
    }
}
