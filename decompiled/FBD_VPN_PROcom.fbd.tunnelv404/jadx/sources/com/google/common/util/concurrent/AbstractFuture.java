package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.j2objc.annotations.ReflectionSupport;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0348x9e171bf9;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import sun.misc.Unsafe;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
@ReflectionSupport(ReflectionSupport.Level.FULL)
/* loaded from: classes2.dex */
public abstract class AbstractFuture<V> extends InternalFutureFailureAccess implements ListenableFuture<V> {
    private static final AtomicHelper ATOMIC_HELPER;
    static final boolean GENERATE_CANCELLATION_CAUSES;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    private static final Logger log;

    @CheckForNull
    private volatile Listener listeners;

    @CheckForNull
    private volatile Object value;

    @CheckForNull
    private volatile Waiter waiters;

    /* loaded from: classes2.dex */
    public static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        public abstract boolean casListeners(AbstractFuture<?> abstractFuture, @CheckForNull Listener listener, Listener listener2);

        public abstract boolean casValue(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2);

        public abstract boolean casWaiters(AbstractFuture<?> abstractFuture, @CheckForNull Waiter waiter, @CheckForNull Waiter waiter2);

        public abstract Listener gasListeners(AbstractFuture<?> abstractFuture, Listener listener);

        public abstract Waiter gasWaiters(AbstractFuture<?> abstractFuture, Waiter waiter);

        public abstract void putNext(Waiter waiter, @CheckForNull Waiter waiter2);

        public abstract void putThread(Waiter waiter, Thread thread);
    }

    /* loaded from: classes2.dex */
    public static final class Cancellation {

        @CheckForNull
        static final Cancellation CAUSELESS_CANCELLED;

        @CheckForNull
        static final Cancellation CAUSELESS_INTERRUPTED;

        @CheckForNull
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (AbstractFuture.GENERATE_CANCELLATION_CAUSES) {
                CAUSELESS_CANCELLED = null;
                CAUSELESS_INTERRUPTED = null;
            } else {
                CAUSELESS_CANCELLED = new Cancellation(false, null);
                CAUSELESS_INTERRUPTED = new Cancellation(true, null);
            }
        }

        public Cancellation(boolean z, @CheckForNull Throwable th) {
            this.wasInterrupted = z;
            this.cause = th;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Failure {
        static final Failure FALLBACK_INSTANCE = new Failure(new Throwable(new ObfuscatedString(new long[]{6257874276095734653L, 5260647160529171610L, -6934755090957457389L, -8543902411632743759L, 5775780236206115401L, -7668896265744488294L, -3770531823318671504L, 750619572120158129L}).toString()) { // from class: com.google.common.util.concurrent.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable exception;

        public Failure(Throwable th) {
            this.exception = (Throwable) Preconditions.checkNotNull(th);
        }
    }

    /* loaded from: classes2.dex */
    public static final class SafeAtomicHelper extends AtomicHelper {
        final AtomicReferenceFieldUpdater<AbstractFuture, Listener> listenersUpdater;
        final AtomicReferenceFieldUpdater<AbstractFuture, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<AbstractFuture, Waiter> waitersUpdater;

        public SafeAtomicHelper(AtomicReferenceFieldUpdater<Waiter, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Waiter, Waiter> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractFuture, Waiter> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractFuture, Listener> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casListeners(AbstractFuture<?> abstractFuture, @CheckForNull Listener listener, Listener listener2) {
            AtomicReferenceFieldUpdater<AbstractFuture, Listener> atomicReferenceFieldUpdater = this.listenersUpdater;
            while (!atomicReferenceFieldUpdater.compareAndSet(abstractFuture, listener, listener2)) {
                if (atomicReferenceFieldUpdater.get(abstractFuture) != listener) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casValue(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater = this.valueUpdater;
            while (!atomicReferenceFieldUpdater.compareAndSet(abstractFuture, obj, obj2)) {
                if (atomicReferenceFieldUpdater.get(abstractFuture) != obj) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casWaiters(AbstractFuture<?> abstractFuture, @CheckForNull Waiter waiter, @CheckForNull Waiter waiter2) {
            AtomicReferenceFieldUpdater<AbstractFuture, Waiter> atomicReferenceFieldUpdater = this.waitersUpdater;
            while (!atomicReferenceFieldUpdater.compareAndSet(abstractFuture, waiter, waiter2)) {
                if (atomicReferenceFieldUpdater.get(abstractFuture) != waiter) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public Listener gasListeners(AbstractFuture<?> abstractFuture, Listener listener) {
            return this.listenersUpdater.getAndSet(abstractFuture, listener);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public Waiter gasWaiters(AbstractFuture<?> abstractFuture, Waiter waiter) {
            return this.waitersUpdater.getAndSet(abstractFuture, waiter);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public void putNext(Waiter waiter, @CheckForNull Waiter waiter2) {
            this.waiterNextUpdater.lazySet(waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public void putThread(Waiter waiter, Thread thread) {
            this.waiterThreadUpdater.lazySet(waiter, thread);
        }
    }

    /* loaded from: classes2.dex */
    public static final class SetFuture<V> implements Runnable {
        final ListenableFuture<? extends V> future;
        final AbstractFuture<V> owner;

        public SetFuture(AbstractFuture<V> abstractFuture, ListenableFuture<? extends V> listenableFuture) {
            this.owner = abstractFuture;
            this.future = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((AbstractFuture) this.owner).value == this) {
                if (AbstractFuture.ATOMIC_HELPER.casValue(this.owner, this, AbstractFuture.getFutureValue(this.future))) {
                    AbstractFuture.complete(this.owner);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class SynchronizedHelper extends AtomicHelper {
        private SynchronizedHelper() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casListeners(AbstractFuture<?> abstractFuture, @CheckForNull Listener listener, Listener listener2) {
            synchronized (abstractFuture) {
                try {
                    if (((AbstractFuture) abstractFuture).listeners == listener) {
                        ((AbstractFuture) abstractFuture).listeners = listener2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casValue(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            synchronized (abstractFuture) {
                try {
                    if (((AbstractFuture) abstractFuture).value == obj) {
                        ((AbstractFuture) abstractFuture).value = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casWaiters(AbstractFuture<?> abstractFuture, @CheckForNull Waiter waiter, @CheckForNull Waiter waiter2) {
            synchronized (abstractFuture) {
                try {
                    if (((AbstractFuture) abstractFuture).waiters == waiter) {
                        ((AbstractFuture) abstractFuture).waiters = waiter2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public Listener gasListeners(AbstractFuture<?> abstractFuture, Listener listener) {
            Listener listener2;
            synchronized (abstractFuture) {
                try {
                    listener2 = ((AbstractFuture) abstractFuture).listeners;
                    if (listener2 != listener) {
                        ((AbstractFuture) abstractFuture).listeners = listener;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return listener2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public Waiter gasWaiters(AbstractFuture<?> abstractFuture, Waiter waiter) {
            Waiter waiter2;
            synchronized (abstractFuture) {
                try {
                    waiter2 = ((AbstractFuture) abstractFuture).waiters;
                    if (waiter2 != waiter) {
                        ((AbstractFuture) abstractFuture).waiters = waiter;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return waiter2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public void putNext(Waiter waiter, @CheckForNull Waiter waiter2) {
            waiter.next = waiter2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public void putThread(Waiter waiter, Thread thread) {
            waiter.thread = thread;
        }
    }

    /* loaded from: classes2.dex */
    public interface Trusted<V> extends ListenableFuture<V> {
    }

    /* loaded from: classes2.dex */
    public static abstract class TrustedFuture<V> extends AbstractFuture<V> implements Trusted<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        @ParametricNullness
        public final V get() {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        @ParametricNullness
        public final V get(long j, TimeUnit timeUnit) {
            return (V) super.get(j, timeUnit);
        }
    }

    /* loaded from: classes2.dex */
    public static final class UnsafeAtomicHelper extends AtomicHelper {
        static final long LISTENERS_OFFSET;
        static final Unsafe UNSAFE;
        static final long VALUE_OFFSET;
        static final long WAITERS_OFFSET;
        static final long WAITER_NEXT_OFFSET;
        static final long WAITER_THREAD_OFFSET;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException(new ObfuscatedString(new long[]{5041594162185830784L, 4842223740104588814L, -3118883853177981138L, 7097287356791440231L, -2469381990955418564L}).toString(), e.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.common.util.concurrent.AbstractFuture.UnsafeAtomicHelper.1
                    @Override // java.security.PrivilegedExceptionAction
                    public Unsafe run() {
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError(new ObfuscatedString(new long[]{-30966026929759444L, 6500153742187986065L, 1701482288086563097L}).toString());
                    }
                });
            }
            try {
                WAITERS_OFFSET = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(new ObfuscatedString(new long[]{1233282776010578780L, 5669545517191326762L}).toString()));
                LISTENERS_OFFSET = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(new ObfuscatedString(new long[]{5986520259048572255L, 2620406614485913360L, -922029209732891769L}).toString()));
                VALUE_OFFSET = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(new ObfuscatedString(new long[]{-8138147569486523492L, -8148980339794522088L}).toString()));
                WAITER_THREAD_OFFSET = unsafe.objectFieldOffset(Waiter.class.getDeclaredField(new ObfuscatedString(new long[]{8515323188651177841L, -8059688948473099823L}).toString()));
                WAITER_NEXT_OFFSET = unsafe.objectFieldOffset(Waiter.class.getDeclaredField(new ObfuscatedString(new long[]{-4917574720237801239L, -7644712721736388814L}).toString()));
                UNSAFE = unsafe;
            } catch (Exception e2) {
                Throwables.throwIfUnchecked(e2);
                throw new RuntimeException(e2);
            }
        }

        private UnsafeAtomicHelper() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casListeners(AbstractFuture<?> abstractFuture, @CheckForNull Listener listener, Listener listener2) {
            return AbstractC0348x9e171bf9.m2689xfbe0c504(UNSAFE, abstractFuture, LISTENERS_OFFSET, listener, listener2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casValue(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            return AbstractC0348x9e171bf9.m2689xfbe0c504(UNSAFE, abstractFuture, VALUE_OFFSET, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public boolean casWaiters(AbstractFuture<?> abstractFuture, @CheckForNull Waiter waiter, @CheckForNull Waiter waiter2) {
            return AbstractC0348x9e171bf9.m2689xfbe0c504(UNSAFE, abstractFuture, WAITERS_OFFSET, waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public Listener gasListeners(AbstractFuture<?> abstractFuture, Listener listener) {
            Listener listener2;
            do {
                listener2 = ((AbstractFuture) abstractFuture).listeners;
                if (listener == listener2) {
                    return listener2;
                }
            } while (!casListeners(abstractFuture, listener2, listener));
            return listener2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public Waiter gasWaiters(AbstractFuture<?> abstractFuture, Waiter waiter) {
            Waiter waiter2;
            do {
                waiter2 = ((AbstractFuture) abstractFuture).waiters;
                if (waiter == waiter2) {
                    return waiter2;
                }
            } while (!casWaiters(abstractFuture, waiter2, waiter));
            return waiter2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public void putNext(Waiter waiter, @CheckForNull Waiter waiter2) {
            UNSAFE.putObject(waiter, WAITER_NEXT_OFFSET, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AtomicHelper
        public void putThread(Waiter waiter, Thread thread) {
            UNSAFE.putObject(waiter, WAITER_THREAD_OFFSET, thread);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Waiter {
        static final Waiter TOMBSTONE = new Waiter(false);

        @CheckForNull
        volatile Waiter next;

        @CheckForNull
        volatile Thread thread;

        public Waiter(boolean z) {
        }

        public void setNext(@CheckForNull Waiter waiter) {
            AbstractFuture.ATOMIC_HELPER.putNext(this, waiter);
        }

        public void unpark() {
            Thread thread = this.thread;
            if (thread != null) {
                this.thread = null;
                LockSupport.unpark(thread);
            }
        }

        public Waiter() {
            AbstractFuture.ATOMIC_HELPER.putThread(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.google.common.util.concurrent.AbstractFuture$SafeAtomicHelper] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.common.util.concurrent.AbstractFuture$1] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.google.common.util.concurrent.AbstractFuture$UnsafeAtomicHelper] */
    static {
        boolean z;
        SynchronizedHelper synchronizedHelper;
        try {
            z = Boolean.parseBoolean(System.getProperty(new ObfuscatedString(new long[]{-810436882223177176L, 775603313460393407L, -3582342240896837801L, 4748671336243244998L, 3083496273052500608L, -5407723641873537231L, -4095478067786078425L}).toString(), new ObfuscatedString(new long[]{6734855548879836754L, -2447814168364112835L}).toString()));
        } catch (SecurityException unused) {
            z = false;
        }
        GENERATE_CANCELLATION_CAUSES = z;
        log = Logger.getLogger(AbstractFuture.class.getName());
        ?? r4 = 0;
        r4 = 0;
        try {
            synchronizedHelper = new UnsafeAtomicHelper();
            th = null;
        } catch (Throwable th) {
            th = th;
            try {
                synchronizedHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, new ObfuscatedString(new long[]{-4169258231140166117L, -1960182924049463114L}).toString()), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, new ObfuscatedString(new long[]{28922156228636773L, -4658138184360389930L}).toString()), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Waiter.class, new ObfuscatedString(new long[]{-4854421110468209939L, -3628758670414449569L}).toString()), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Listener.class, new ObfuscatedString(new long[]{5949411878007691800L, -1512698454797591822L, 5061529254480241896L}).toString()), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, new ObfuscatedString(new long[]{-2786040977508277573L, -5983296484694753363L}).toString()));
            } catch (Throwable th2) {
                synchronizedHelper = new SynchronizedHelper();
                r4 = th2;
            }
        }
        ATOMIC_HELPER = synchronizedHelper;
        if (r4 != 0) {
            ?? r1 = log;
            Level level = Level.SEVERE;
            r1.log(level, new ObfuscatedString(new long[]{2278274523189942596L, 4722635519449999324L, -3807346263262698421L, -6776182739292249419L, -2059066606840564087L}).toString(), th);
            r1.log(level, new ObfuscatedString(new long[]{-3147954917940430256L, -8905860165605915800L, 1397602391890116793L, 3272316896153734771L, 2897138270560654753L}).toString(), r4);
        }
        NULL = new Object();
    }

    private void addDoneString(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append(new ObfuscatedString(new long[]{-1682833230746484979L, 5863203869477010200L, 2636841127525155694L, 3101660675157462920L}).toString());
            appendResultObject(sb, uninterruptibly);
            sb.append(new ObfuscatedString(new long[]{4377353411667908554L, 5442776906218265151L}).toString());
        } catch (CancellationException unused) {
            sb.append(new ObfuscatedString(new long[]{-3221854429990552249L, 7077131208190633363L, -5143169076959788961L}).toString());
        } catch (RuntimeException e) {
            sb.append(new ObfuscatedString(new long[]{9134149545359666389L, 7119730239483866055L, 4602130373696525617L}).toString());
            sb.append(e.getClass());
            sb.append(new ObfuscatedString(new long[]{-6409400860297753084L, -6176847970620609426L, 476981181828250254L, -9078831202508096427L}).toString());
        } catch (ExecutionException e2) {
            sb.append(new ObfuscatedString(new long[]{-3678060272874590824L, 8673519795964580953L, 6631449045070290563L}).toString());
            sb.append(e2.getCause());
            sb.append(new ObfuscatedString(new long[]{-1486597340764225983L, -2923750918502983516L}).toString());
        }
    }

    private void addPendingString(StringBuilder sb) {
        String m3336x1aebc6d9;
        int length = sb.length();
        sb.append(new ObfuscatedString(new long[]{-7475896850512055929L, 4710211284361862867L}).toString());
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            sb.append(new ObfuscatedString(new long[]{4160218261763405671L, -6238682650370688362L, 66309312161496124L}).toString());
            appendUserObject(sb, ((SetFuture) obj).future);
            sb.append(new ObfuscatedString(new long[]{6273358010514145160L, -2516648780764175865L}).toString());
        } else {
            try {
                m3336x1aebc6d9 = Strings.emptyToNull(pendingToString());
            } catch (RuntimeException | StackOverflowError e) {
                String valueOf = String.valueOf(e.getClass());
                m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-316809888128323538L, -3427635384926691785L, -682603304053109182L, 8625372609769701071L, -1870453827188097277L, 7764656983520046714L}), new StringBuilder(valueOf.length() + 38), valueOf);
            }
            if (m3336x1aebc6d9 != null) {
                sb.append(new ObfuscatedString(new long[]{3878149068650639737L, 458953098396797276L}).toString());
                sb.append(m3336x1aebc6d9);
                sb.append(new ObfuscatedString(new long[]{5420986265973174959L, -5683677324733679961L}).toString());
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            addDoneString(sb);
        }
    }

    private void appendResultObject(StringBuilder sb, @CheckForNull Object obj) {
        if (obj == null) {
            sb.append(new ObfuscatedString(new long[]{1778966978259439623L, 622298563912593219L}).toString());
        } else {
            if (obj == this) {
                sb.append(new ObfuscatedString(new long[]{-8501480756983281393L, -4262112322477810240L, 6274002625776771103L}).toString());
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append(new ObfuscatedString(new long[]{6153728538870682658L, -9073363929172886506L}).toString());
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    private void appendUserObject(StringBuilder sb, @CheckForNull Object obj) {
        try {
            if (obj == this) {
                sb.append(new ObfuscatedString(new long[]{175926858799488262L, -5502540080343989117L, -8159278349428128801L}).toString());
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException e) {
            e = e;
            sb.append(new ObfuscatedString(new long[]{3197681835618130974L, 7584124170423625787L, -8088926488013626909L, 6937752443143971197L, -5795876994510813010L, 5161793387004249915L}).toString());
            sb.append(e.getClass());
        } catch (StackOverflowError e2) {
            e = e2;
            sb.append(new ObfuscatedString(new long[]{3197681835618130974L, 7584124170423625787L, -8088926488013626909L, 6937752443143971197L, -5795876994510813010L, 5161793387004249915L}).toString());
            sb.append(e.getClass());
        }
    }

    private static CancellationException cancellationExceptionWithCause(String str, @CheckForNull Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    @CheckForNull
    private Listener clearListeners(@CheckForNull Listener listener) {
        Listener listener2 = listener;
        Listener gasListeners = ATOMIC_HELPER.gasListeners(this, Listener.TOMBSTONE);
        while (gasListeners != null) {
            Listener listener3 = gasListeners.next;
            gasListeners.next = listener2;
            listener2 = gasListeners;
            gasListeners = listener3;
        }
        return listener2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void complete(AbstractFuture<?> abstractFuture) {
        Listener listener = null;
        while (true) {
            abstractFuture.releaseWaiters();
            abstractFuture.afterDone();
            Listener clearListeners = abstractFuture.clearListeners(listener);
            while (clearListeners != null) {
                listener = clearListeners.next;
                Runnable runnable = clearListeners.task;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable2;
                    abstractFuture = setFuture.owner;
                    if (((AbstractFuture) abstractFuture).value == setFuture) {
                        if (ATOMIC_HELPER.casValue(abstractFuture, setFuture, getFutureValue(setFuture.future))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = clearListeners.executor;
                    Objects.requireNonNull(executor);
                    executeListener(runnable2, executor);
                }
                clearListeners = listener;
            }
            return;
        }
    }

    private static void executeListener(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = log;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 57);
            sb.append(new ObfuscatedString(new long[]{3347858621258205740L, -6544173857854876718L, 1645138910823899171L, -7392529332805100644L, -5233924515736459263L, -2070479337195913829L, -6709638739507782482L}).toString());
            sb.append(valueOf);
            logger.log(level, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-3347961183988597783L, -1174272140276589909L, -8390761116158548074L}), sb, valueOf2), (Throwable) e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ParametricNullness
    private V getDoneValue(Object obj) {
        if (!(obj instanceof Cancellation)) {
            if (!(obj instanceof Failure)) {
                if (obj == NULL) {
                    return (V) NullnessCasts.uncheckedNull();
                }
                return obj;
            }
            throw new ExecutionException(((Failure) obj).exception);
        }
        throw cancellationExceptionWithCause(new ObfuscatedString(new long[]{7536444023290532482L, -620721060607551532L, 4591516793217782130L, 3013786325797232823L}).toString(), ((Cancellation) obj).cause);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object getFutureValue(ListenableFuture<?> listenableFuture) {
        Throwable tryInternalFastPathGetFailure;
        if (listenableFuture instanceof Trusted) {
            Object obj = ((AbstractFuture) listenableFuture).value;
            if (obj instanceof Cancellation) {
                Cancellation cancellation = (Cancellation) obj;
                if (cancellation.wasInterrupted) {
                    obj = cancellation.cause != null ? new Cancellation(false, cancellation.cause) : Cancellation.CAUSELESS_CANCELLED;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        }
        if ((listenableFuture instanceof InternalFutureFailureAccess) && (tryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) listenableFuture)) != null) {
            return new Failure(tryInternalFastPathGetFailure);
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) & isCancelled) {
            Cancellation cancellation2 = Cancellation.CAUSELESS_CANCELLED;
            Objects.requireNonNull(cancellation2);
            return cancellation2;
        }
        try {
            Object uninterruptibly = getUninterruptibly(listenableFuture);
            if (isCancelled) {
                String valueOf = String.valueOf(listenableFuture);
                StringBuilder sb = new StringBuilder(valueOf.length() + 84);
                sb.append(new ObfuscatedString(new long[]{-6770243895465639761L, 5657006224774924869L, 2243984097532915776L, -5583434147393052433L, -6886380524362054090L, -8276583704752160551L, -4754888353620627507L, -4639131576071174379L, 5772246558543991307L, -592343928832024803L, -5595627913276904983L, -907797455625509151L}).toString());
                sb.append(valueOf);
                return new Cancellation(false, new IllegalArgumentException(sb.toString()));
            }
            if (uninterruptibly == null) {
                return NULL;
            }
            return uninterruptibly;
        } catch (CancellationException e) {
            if (!isCancelled) {
                String valueOf2 = String.valueOf(listenableFuture);
                return new Failure(new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5135122369138938389L, -7665683186659252164L, 2131676602849213145L, 1252633996312889554L, 6838023780807664808L, 7724112285813564916L, -3590872455431427163L, -7199633191230976170L, 6307828820861461415L, -8252986474695883468L, 1027190913663129281L}), new StringBuilder(valueOf2.length() + 77), valueOf2), e));
            }
            return new Cancellation(false, e);
        } catch (ExecutionException e2) {
            if (isCancelled) {
                String valueOf3 = String.valueOf(listenableFuture);
                return new Cancellation(false, new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-2274815506029356484L, -4240494158416017375L, 1298754429365969159L, -7977318833847223845L, -3670199326279453041L, 6846637674185162113L, -6376644073303515141L, -8184698572031208039L, -4910855651543327090L, -1221025278948933934L, 1937251102418488563L, 449363250841182586L}), new StringBuilder(valueOf3.length() + 84), valueOf3), e2));
            }
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    @ParametricNullness
    private static <V> V getUninterruptibly(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    private void releaseWaiters() {
        for (Waiter gasWaiters = ATOMIC_HELPER.gasWaiters(this, Waiter.TOMBSTONE); gasWaiters != null; gasWaiters = gasWaiters.next) {
            gasWaiters.unpark();
        }
    }

    private void removeWaiter(Waiter waiter) {
        waiter.thread = null;
        while (true) {
            Waiter waiter2 = this.waiters;
            if (waiter2 == Waiter.TOMBSTONE) {
                return;
            }
            Waiter waiter3 = null;
            while (waiter2 != null) {
                Waiter waiter4 = waiter2.next;
                if (waiter2.thread != null) {
                    waiter3 = waiter2;
                } else if (waiter3 != null) {
                    waiter3.next = waiter4;
                    if (waiter3.thread == null) {
                        break;
                    }
                } else if (!ATOMIC_HELPER.casWaiters(this, waiter2, waiter4)) {
                    break;
                }
                waiter2 = waiter4;
            }
            return;
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Listener listener;
        Preconditions.checkNotNull(runnable, new ObfuscatedString(new long[]{-8999533285188851402L, -940269964958970147L, -1977930224259049569L, -701698725518041969L}).toString());
        Preconditions.checkNotNull(executor, new ObfuscatedString(new long[]{-8927413887380885716L, 8086853872832249082L, 7012725641324934969L, -9217587932634148984L}).toString());
        if (!isDone() && (listener = this.listeners) != Listener.TOMBSTONE) {
            Listener listener2 = new Listener(runnable, executor);
            do {
                listener2.next = listener;
                if (ATOMIC_HELPER.casListeners(this, listener, listener2)) {
                    return;
                } else {
                    listener = this.listeners;
                }
            } while (listener != Listener.TOMBSTONE);
        }
        executeListener(runnable, executor);
    }

    @Beta
    @ForOverride
    public void afterDone() {
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public boolean cancel(boolean z) {
        boolean z2;
        Cancellation cancellation;
        boolean z3;
        Object obj = this.value;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 | (obj instanceof SetFuture)) {
            if (GENERATE_CANCELLATION_CAUSES) {
                cancellation = new Cancellation(z, new CancellationException(new ObfuscatedString(new long[]{4585897677048876225L, -6712624975530816137L, 1168465616510234119L, 1412410127551285784L, -21162321088567313L}).toString()));
            } else {
                if (z) {
                    cancellation = Cancellation.CAUSELESS_INTERRUPTED;
                } else {
                    cancellation = Cancellation.CAUSELESS_CANCELLED;
                }
                Objects.requireNonNull(cancellation);
            }
            boolean z4 = false;
            AbstractFuture<V> abstractFuture = this;
            while (true) {
                if (ATOMIC_HELPER.casValue(abstractFuture, obj, cancellation)) {
                    if (z) {
                        abstractFuture.interruptTask();
                    }
                    complete(abstractFuture);
                    if (!(obj instanceof SetFuture)) {
                        return true;
                    }
                    ListenableFuture<? extends V> listenableFuture = ((SetFuture) obj).future;
                    if (listenableFuture instanceof Trusted) {
                        abstractFuture = (AbstractFuture) listenableFuture;
                        obj = abstractFuture.value;
                        if (obj == null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (!(z3 | (obj instanceof SetFuture))) {
                            return true;
                        }
                        z4 = true;
                    } else {
                        listenableFuture.cancel(z);
                        return true;
                    }
                } else {
                    obj = abstractFuture.value;
                    if (!(obj instanceof SetFuture)) {
                        return z4;
                    }
                }
            }
        } else {
            return false;
        }
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    @ParametricNullness
    public V get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.value;
            if ((obj != null) & (!(obj instanceof SetFuture))) {
                return getDoneValue(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                Waiter waiter = this.waiters;
                if (waiter != Waiter.TOMBSTONE) {
                    Waiter waiter2 = new Waiter();
                    do {
                        waiter2.setNext(waiter);
                        if (ATOMIC_HELPER.casWaiters(this, waiter, waiter2)) {
                            do {
                                OverflowAvoidingLockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.value;
                                    if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                                        return getDoneValue(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    removeWaiter(waiter2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            removeWaiter(waiter2);
                        } else {
                            waiter = this.waiters;
                        }
                    } while (waiter != Waiter.TOMBSTONE);
                }
                Object obj3 = this.value;
                Objects.requireNonNull(obj3);
                return getDoneValue(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.value;
                if ((obj4 != null) & (!(obj4 instanceof SetFuture))) {
                    return getDoneValue(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractFuture = toString();
            String obj5 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj5.toLowerCase(locale);
            String lowerCase2 = timeUnit.toString().toLowerCase(locale);
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(28, lowerCase2));
            sb.append(new ObfuscatedString(new long[]{-2266551082989964153L, -5938871457929451641L}).toString());
            sb.append(j);
            String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-6251136181731325230L, -1405802341660593750L}), sb, lowerCase2);
            if (nanos + 1000 < 0) {
                String concat = String.valueOf(m3336x1aebc6d9).concat(new ObfuscatedString(new long[]{-3048107428441953089L, 4240873324680825422L}).toString());
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb2 = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(valueOf.length() + 21, lowerCase));
                    sb2.append(valueOf);
                    sb2.append(convert);
                    String m3336x1aebc6d92 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-2476612071164690755L, -1713215019621473874L}), sb2, lowerCase);
                    if (z) {
                        m3336x1aebc6d92 = String.valueOf(m3336x1aebc6d92).concat(new ObfuscatedString(new long[]{-3094952780608731854L, -2218090530830606347L}).toString());
                    }
                    concat = String.valueOf(m3336x1aebc6d92).concat(new ObfuscatedString(new long[]{7203866890316770373L, -2429735116916530545L}).toString());
                }
                if (z) {
                    String valueOf2 = String.valueOf(concat);
                    StringBuilder sb3 = new StringBuilder(valueOf2.length() + 33);
                    sb3.append(valueOf2);
                    sb3.append(nanos2);
                    concat = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3161286145390681417L, -3079372378379774613L, -658519525877670974L}), sb3);
                }
                m3336x1aebc6d9 = String.valueOf(concat).concat(new ObfuscatedString(new long[]{7955172639523670918L, -8629105854150635223L}).toString());
            }
            if (isDone()) {
                throw new TimeoutException(String.valueOf(m3336x1aebc6d9).concat(new ObfuscatedString(new long[]{7079833470687013104L, -6061121081830982418L, -3400443625230135873L, 8051738600844648600L, 8140659865732441957L, 11589146589982337L}).toString()));
            }
            throw new TimeoutException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4920742895624105787L, -8176746611243208933L}), AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(5, m3336x1aebc6d9), abstractFuture), m3336x1aebc6d9), abstractFuture));
        }
        throw new InterruptedException();
    }

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        if (this.value != null) {
            z = true;
        } else {
            z = false;
        }
        return (!(r0 instanceof SetFuture)) & z;
    }

    public final void maybePropagateCancellationTo(@CheckForNull Future<?> future) {
        boolean z;
        if (future != null) {
            z = true;
        } else {
            z = false;
        }
        if (z & isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public String pendingToString() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder(41);
            sb.append(new ObfuscatedString(new long[]{-6002601904187659059L, 7115643410463573219L, 5639518045051851817L, 5142603541726462801L}).toString());
            sb.append(delay);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3373600880400740426L, -5622136924856089454L}), sb);
        }
        return null;
    }

    @CanIgnoreReturnValue
    public boolean set(@ParametricNullness V v) {
        if (v == null) {
            v = (V) NULL;
        }
        if (ATOMIC_HELPER.casValue(this, null, v)) {
            complete(this);
            return true;
        }
        return false;
    }

    @CanIgnoreReturnValue
    public boolean setException(Throwable th) {
        if (ATOMIC_HELPER.casValue(this, null, new Failure((Throwable) Preconditions.checkNotNull(th)))) {
            complete(this);
            return true;
        }
        return false;
    }

    @CanIgnoreReturnValue
    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        Failure failure;
        Preconditions.checkNotNull(listenableFuture);
        Object obj = this.value;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!ATOMIC_HELPER.casValue(this, null, getFutureValue(listenableFuture))) {
                    return false;
                }
                complete(this);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, listenableFuture);
            if (ATOMIC_HELPER.casValue(this, null, setFuture)) {
                try {
                    listenableFuture.addListener(setFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable unused) {
                        failure = Failure.FALLBACK_INSTANCE;
                    }
                    ATOMIC_HELPER.casValue(this, setFuture, failure);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof Cancellation) {
            listenableFuture.cancel(((Cancellation) obj).wasInterrupted);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith(new ObfuscatedString(new long[]{-3616745626218990342L, -3343379493715800812L, -4241512151698714204L, -559702133059607169L, 6316673902758757579L, 3351826650017457053L}).toString())) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(new ObfuscatedString(new long[]{-3759968501197972432L, 1244025385071315315L}).toString());
        if (isCancelled()) {
            sb.append(new ObfuscatedString(new long[]{-1296392141706008684L, -873635417613392568L, 4001266261225636565L}).toString());
        } else if (isDone()) {
            addDoneString(sb);
        } else {
            addPendingString(sb);
        }
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8402746957493507349L, -5409153443932744552L}), sb);
    }

    @Override // com.google.common.util.concurrent.internal.InternalFutureFailureAccess
    @CheckForNull
    public final Throwable tryInternalFastPathGetFailure() {
        if (this instanceof Trusted) {
            Object obj = this.value;
            if (obj instanceof Failure) {
                return ((Failure) obj).exception;
            }
            return null;
        }
        return null;
    }

    public final boolean wasInterrupted() {
        Object obj = this.value;
        if ((obj instanceof Cancellation) && ((Cancellation) obj).wasInterrupted) {
            return true;
        }
        return false;
    }

    /* loaded from: classes2.dex */
    public static final class Listener {
        static final Listener TOMBSTONE = new Listener();

        @CheckForNull
        final Executor executor;

        @CheckForNull
        Listener next;

        @CheckForNull
        final Runnable task;

        public Listener(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }

        public Listener() {
            this.task = null;
            this.executor = null;
        }
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    @ParametricNullness
    public V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return getDoneValue(obj2);
            }
            Waiter waiter = this.waiters;
            if (waiter != Waiter.TOMBSTONE) {
                Waiter waiter2 = new Waiter();
                do {
                    waiter2.setNext(waiter);
                    if (ATOMIC_HELPER.casWaiters(this, waiter, waiter2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                removeWaiter(waiter2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return getDoneValue(obj);
                    }
                    waiter = this.waiters;
                } while (waiter != Waiter.TOMBSTONE);
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return getDoneValue(obj3);
        }
        throw new InterruptedException();
    }
}
