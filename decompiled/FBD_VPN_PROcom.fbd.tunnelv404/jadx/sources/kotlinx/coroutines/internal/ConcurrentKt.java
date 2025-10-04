package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a,\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00060\u0001j\u0002`\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0080\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00072\u0006\u0010\t\u001a\u00020\bH\u0080\b¢\u0006\u0004\b\u000b\u0010\f\u001a\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0000¢\u0006\u0004\b\u0010\u0010\u0011*\f\b\u0000\u0010\u0012\"\u00020\u00012\u00020\u0001*\u001e\b\u0000\u0010\u0014\u001a\u0004\b\u0000\u0010\u0000\"\b\u0012\u0004\u0012\u00028\u00000\u00132\b\u0012\u0004\u0012\u00028\u00000\u0013¨\u0006\u0015"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "Lkotlin/Function0;", "action", "withLock", "(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "", "expectedSize", "", "identitySet", "(I)Ljava/util/Set;", "Ljava/util/concurrent/Executor;", "executor", "", "removeFutureOnCancel", "(Ljava/util/concurrent/Executor;)Z", "ReentrantLock", "Ljava/util/concurrent/atomic/AtomicReference;", "WorkaroundAtomicReference", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConcurrentKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Method f2380xfbe0c504;

    static {
        Method method;
        try {
            method = ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable unused) {
            method = null;
        }
        f2380xfbe0c504 = method;
    }

    @NotNull
    public static final <E> Set<E> identitySet(int i) {
        return Collections.newSetFromMap(new IdentityHashMap(i));
    }

    public static final boolean removeFutureOnCancel(@NotNull Executor executor) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        Method method;
        try {
            if (executor instanceof ScheduledThreadPoolExecutor) {
                scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) executor;
            } else {
                scheduledThreadPoolExecutor = null;
            }
            if (scheduledThreadPoolExecutor == null || (method = f2380xfbe0c504) == null) {
                return false;
            }
            method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static final <T> T withLock(@NotNull ReentrantLock reentrantLock, @NotNull Function0<? extends T> function0) {
        reentrantLock.lock();
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            reentrantLock.unlock();
            InlineMarker.finallyEnd(1);
        }
    }
}
