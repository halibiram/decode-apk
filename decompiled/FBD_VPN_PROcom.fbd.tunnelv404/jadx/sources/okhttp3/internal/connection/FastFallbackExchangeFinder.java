package okhttp3.internal.connection;

import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC1098x3ea3cab3;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RoutePlanner;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/connection/FastFallbackExchangeFinder;", "Lokhttp3/internal/connection/ExchangeFinder;", "Lokhttp3/internal/connection/RoutePlanner;", "routePlanner", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V", "Lokhttp3/internal/connection/RealConnection;", "find", "()Lokhttp3/internal/connection/RealConnection;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/connection/RoutePlanner;", "getRoutePlanner", "()Lokhttp3/internal/connection/RoutePlanner;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FastFallbackExchangeFinder implements ExchangeFinder {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final RoutePlanner routePlanner;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final TaskRunner f3154x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final long f3155x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public long f3156x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final CopyOnWriteArrayList f3157x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final BlockingQueue f3158x9e171bf9;

    public FastFallbackExchangeFinder(@NotNull RoutePlanner routePlanner, @NotNull TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        this.routePlanner = routePlanner;
        this.f3154x3271d0aa = taskRunner;
        this.f3155x1378447b = TimeUnit.MILLISECONDS.toNanos(250L);
        this.f3156x75d576dc = Long.MIN_VALUE;
        this.f3157x9738a56c = new CopyOnWriteArrayList();
        this.f3158x9e171bf9 = taskRunner.getBackend().decorate(new LinkedBlockingDeque());
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052 A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:4:0x0004, B:6:0x000a, B:12:0x0020, B:14:0x002a, B:21:0x0052, B:56:0x005c, B:59:0x0067, B:26:0x0072, B:28:0x0078, B:30:0x0085, B:31:0x008d, B:34:0x0093, B:37:0x009f, B:39:0x00a5, B:42:0x00ab, B:43:0x00af, B:45:0x00b3, B:46:0x00b4, B:49:0x00ba, B:61:0x0047, B:63:0x00c7, B:64:0x00ce), top: B:3:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0072 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0078 A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:4:0x0004, B:6:0x000a, B:12:0x0020, B:14:0x002a, B:21:0x0052, B:56:0x005c, B:59:0x0067, B:26:0x0072, B:28:0x0078, B:30:0x0085, B:31:0x008d, B:34:0x0093, B:37:0x009f, B:39:0x00a5, B:42:0x00ab, B:43:0x00af, B:45:0x00b3, B:46:0x00b4, B:49:0x00ba, B:61:0x0047, B:63:0x00c7, B:64:0x00ce), top: B:3:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a5 A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:4:0x0004, B:6:0x000a, B:12:0x0020, B:14:0x002a, B:21:0x0052, B:56:0x005c, B:59:0x0067, B:26:0x0072, B:28:0x0078, B:30:0x0085, B:31:0x008d, B:34:0x0093, B:37:0x009f, B:39:0x00a5, B:42:0x00ab, B:43:0x00af, B:45:0x00b3, B:46:0x00b4, B:49:0x00ba, B:61:0x0047, B:63:0x00c7, B:64:0x00ce), top: B:3:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0072 A[SYNTHETIC] */
    @Override // okhttp3.internal.connection.ExchangeFinder
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RealConnection find() {
        RoutePlanner.ConnectResult m2595x3271d0aa;
        long j;
        Throwable throwable;
        RoutePlanner.Plan nextPlan;
        RoutePlanner.ConnectResult connectResult;
        IOException iOException = null;
        while (true) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f3157x9738a56c;
            try {
                if (copyOnWriteArrayList.isEmpty() && !AbstractC1098x3ea3cab3.m3800xfbe0c504(getRoutePlanner(), null, 1, null)) {
                    m2594xfbe0c504();
                    Intrinsics.checkNotNull(iOException);
                    throw iOException;
                }
                if (!getRoutePlanner().isCanceled()) {
                    long nanoTime = this.f3154x3271d0aa.getBackend().nanoTime();
                    long j2 = this.f3156x75d576dc - nanoTime;
                    if (!copyOnWriteArrayList.isEmpty() && j2 > 0) {
                        j = j2;
                        m2595x3271d0aa = null;
                        if (m2595x3271d0aa != null) {
                            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                            if (!copyOnWriteArrayList.isEmpty() && (connectResult = (RoutePlanner.ConnectResult) this.f3158x9e171bf9.poll(j, timeUnit)) != null) {
                                copyOnWriteArrayList.remove(connectResult.getPlan());
                                m2595x3271d0aa = connectResult;
                                if (m2595x3271d0aa != null) {
                                }
                            }
                            m2595x3271d0aa = null;
                            if (m2595x3271d0aa != null) {
                            }
                        }
                        if (m2595x3271d0aa.isSuccess()) {
                            m2594xfbe0c504();
                            if (!m2595x3271d0aa.getPlan().isReady()) {
                                m2595x3271d0aa = m2595x3271d0aa.getPlan().mo2600connectTlsEtc();
                            }
                            if (m2595x3271d0aa.isSuccess()) {
                                return m2595x3271d0aa.getPlan().mo2592handleSuccess();
                            }
                        }
                        throwable = m2595x3271d0aa.getThrowable();
                        if (throwable != null) {
                            if (throwable instanceof IOException) {
                                if (iOException == null) {
                                    iOException = (IOException) throwable;
                                } else {
                                    AbstractC0720xaa9ccb5a.addSuppressed(iOException, throwable);
                                }
                            } else {
                                throw throwable;
                            }
                        }
                        nextPlan = m2595x3271d0aa.getNextPlan();
                        if (nextPlan == null) {
                            getRoutePlanner().getDeferredPlans().addFirst(nextPlan);
                        }
                    }
                    m2595x3271d0aa = m2595x3271d0aa();
                    j = this.f3155x1378447b;
                    this.f3156x75d576dc = nanoTime + j;
                    if (m2595x3271d0aa != null) {
                    }
                    if (m2595x3271d0aa.isSuccess()) {
                    }
                    throwable = m2595x3271d0aa.getThrowable();
                    if (throwable != null) {
                    }
                    nextPlan = m2595x3271d0aa.getNextPlan();
                    if (nextPlan == null) {
                    }
                } else {
                    throw new IOException("Canceled");
                }
            } finally {
                m2594xfbe0c504();
            }
        }
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    @NotNull
    public RoutePlanner getRoutePlanner() {
        return this.routePlanner;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2594xfbe0c504() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f3157x9738a56c;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            RoutePlanner.Plan plan = (RoutePlanner.Plan) it.next();
            plan.mo2591cancel();
            RoutePlanner.Plan mo2593retry = plan.mo2593retry();
            if (mo2593retry != null) {
                getRoutePlanner().getDeferredPlans().addLast(mo2593retry);
            }
        }
        copyOnWriteArrayList.clear();
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final RoutePlanner.ConnectResult m2595x3271d0aa() {
        final RoutePlanner.Plan failedPlan;
        if (AbstractC1098x3ea3cab3.m3800xfbe0c504(getRoutePlanner(), null, 1, null)) {
            try {
                failedPlan = getRoutePlanner().plan();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.isReady()) {
                return new RoutePlanner.ConnectResult(failedPlan, null, null, 6, null);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).getResult();
            }
            this.f3157x9738a56c.add(failedPlan);
            final String str = _UtilJvmKt.okHttpName + " connect " + getRoutePlanner().getAddress().url().redact();
            TaskQueue.schedule$default(this.f3154x3271d0aa.newQueue(), new Task(str) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder$launchTcpConnect$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    RoutePlanner.ConnectResult connectResult;
                    CopyOnWriteArrayList copyOnWriteArrayList;
                    BlockingQueue blockingQueue;
                    RoutePlanner.Plan plan = failedPlan;
                    try {
                        connectResult = plan.getResult();
                    } catch (Throwable th2) {
                        connectResult = new RoutePlanner.ConnectResult(failedPlan, null, th2, 2, null);
                    }
                    FastFallbackExchangeFinder fastFallbackExchangeFinder = this;
                    copyOnWriteArrayList = fastFallbackExchangeFinder.f3157x9738a56c;
                    if (copyOnWriteArrayList.contains(plan)) {
                        blockingQueue = fastFallbackExchangeFinder.f3158x9e171bf9;
                        blockingQueue.put(connectResult);
                        return -1L;
                    }
                    return -1L;
                }
            }, 0L, 2, null);
        }
        return null;
    }
}
