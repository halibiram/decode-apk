package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.Weak;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Monitor {

    @CheckForNull
    @GuardedBy("lock")
    private Guard activeGuards;
    private final boolean fair;
    private final ReentrantLock lock;

    /* loaded from: classes2.dex */
    public static abstract class Guard {
        final Condition condition;

        @Weak
        final Monitor monitor;

        @CheckForNull
        @GuardedBy("monitor.lock")
        Guard next;

        @GuardedBy("monitor.lock")
        int waiterCount = 0;

        public Guard(Monitor monitor) {
            this.monitor = (Monitor) Preconditions.checkNotNull(monitor, new ObfuscatedString(new long[]{2425060493051778098L, -5777859539507466908L}).toString());
            this.condition = monitor.lock.newCondition();
        }

        public abstract boolean isSatisfied();
    }

    public Monitor() {
        this(false);
    }

    @GuardedBy("lock")
    private void await(Guard guard, boolean z) {
        if (z) {
            signalNextWaiter();
        }
        beginWaitingFor(guard);
        do {
            try {
                guard.condition.await();
            } finally {
                endWaitingFor(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy("lock")
    private boolean awaitNanos(Guard guard, long j, boolean z) {
        boolean z2 = true;
        while (j > 0) {
            if (z2) {
                if (z) {
                    try {
                        signalNextWaiter();
                    } catch (Throwable th) {
                        if (!z2) {
                            endWaitingFor(guard);
                        }
                        throw th;
                    }
                }
                beginWaitingFor(guard);
                z2 = false;
            }
            j = guard.condition.awaitNanos(j);
            if (guard.isSatisfied()) {
                if (!z2) {
                    endWaitingFor(guard);
                }
                return true;
            }
        }
        if (!z2) {
            endWaitingFor(guard);
        }
        return false;
    }

    @GuardedBy("lock")
    private void awaitUninterruptibly(Guard guard, boolean z) {
        if (z) {
            signalNextWaiter();
        }
        beginWaitingFor(guard);
        do {
            try {
                guard.condition.awaitUninterruptibly();
            } finally {
                endWaitingFor(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy("lock")
    private void beginWaitingFor(Guard guard) {
        int i = guard.waiterCount;
        guard.waiterCount = i + 1;
        if (i == 0) {
            guard.next = this.activeGuards;
            this.activeGuards = guard;
        }
    }

    @GuardedBy("lock")
    private void endWaitingFor(Guard guard) {
        int i = guard.waiterCount - 1;
        guard.waiterCount = i;
        if (i == 0) {
            Guard guard2 = this.activeGuards;
            Guard guard3 = null;
            while (guard2 != guard) {
                guard3 = guard2;
                guard2 = guard2.next;
            }
            if (guard3 == null) {
                this.activeGuards = guard2.next;
            } else {
                guard3.next = guard2.next;
            }
            guard2.next = null;
        }
    }

    private static long initNanoTime(long j) {
        if (j <= 0) {
            return 0L;
        }
        long nanoTime = System.nanoTime();
        if (nanoTime == 0) {
            return 1L;
        }
        return nanoTime;
    }

    @GuardedBy("lock")
    private boolean isSatisfied(Guard guard) {
        try {
            return guard.isSatisfied();
        } catch (Throwable th) {
            signalAllWaiters();
            throw th;
        }
    }

    private static long remainingNanos(long j, long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        return j2 - (System.nanoTime() - j);
    }

    @GuardedBy("lock")
    private void signalAllWaiters() {
        for (Guard guard = this.activeGuards; guard != null; guard = guard.next) {
            guard.condition.signalAll();
        }
    }

    @GuardedBy("lock")
    private void signalNextWaiter() {
        for (Guard guard = this.activeGuards; guard != null; guard = guard.next) {
            if (isSatisfied(guard)) {
                guard.condition.signal();
                return;
            }
        }
    }

    private static long toSafeNanos(long j, TimeUnit timeUnit) {
        return Longs.constrainToRange(timeUnit.toNanos(j), 0L, 6917529027641081853L);
    }

    public void enter() {
        this.lock.lock();
    }

    public boolean enterIf(Guard guard) {
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean enterIfInterruptibly(Guard guard) {
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lockInterruptibly();
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public void enterInterruptibly() {
        this.lock.lockInterruptibly();
    }

    public void enterWhen(Guard guard) {
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            reentrantLock.lockInterruptibly();
            try {
                if (guard.isSatisfied()) {
                    return;
                }
                await(guard, isHeldByCurrentThread);
                return;
            } catch (Throwable th) {
                leave();
                throw th;
            }
        }
        throw new IllegalMonitorStateException();
    }

    public void enterWhenUninterruptibly(Guard guard) {
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            reentrantLock.lock();
            try {
                if (guard.isSatisfied()) {
                    return;
                }
                awaitUninterruptibly(guard, isHeldByCurrentThread);
                return;
            } catch (Throwable th) {
                leave();
                throw th;
            }
        }
        throw new IllegalMonitorStateException();
    }

    public int getOccupiedDepth() {
        return this.lock.getHoldCount();
    }

    public int getQueueLength() {
        return this.lock.getQueueLength();
    }

    public int getWaitQueueLength(Guard guard) {
        if (guard.monitor == this) {
            this.lock.lock();
            try {
                return guard.waiterCount;
            } finally {
                this.lock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean hasQueuedThread(Thread thread) {
        return this.lock.hasQueuedThread(thread);
    }

    public boolean hasQueuedThreads() {
        return this.lock.hasQueuedThreads();
    }

    public boolean hasWaiters(Guard guard) {
        if (getWaitQueueLength(guard) > 0) {
            return true;
        }
        return false;
    }

    public boolean isFair() {
        return this.fair;
    }

    public boolean isOccupied() {
        return this.lock.isLocked();
    }

    public boolean isOccupiedByCurrentThread() {
        return this.lock.isHeldByCurrentThread();
    }

    public void leave() {
        ReentrantLock reentrantLock = this.lock;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                signalNextWaiter();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean tryEnter() {
        return this.lock.tryLock();
    }

    public boolean tryEnterIf(Guard guard) {
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            if (!reentrantLock.tryLock()) {
                return false;
            }
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public void waitFor(Guard guard) {
        if (guard.monitor == this && this.lock.isHeldByCurrentThread()) {
            if (guard.isSatisfied()) {
                return;
            }
            await(guard, true);
            return;
        }
        throw new IllegalMonitorStateException();
    }

    public void waitForUninterruptibly(Guard guard) {
        if (guard.monitor == this && this.lock.isHeldByCurrentThread()) {
            if (guard.isSatisfied()) {
                return;
            }
            awaitUninterruptibly(guard, true);
            return;
        }
        throw new IllegalMonitorStateException();
    }

    public Monitor(boolean z) {
        this.activeGuards = null;
        this.fair = z;
        this.lock = new ReentrantLock(z);
    }

    public boolean enter(long j, TimeUnit timeUnit) {
        boolean tryLock;
        long safeNanos = toSafeNanos(j, timeUnit);
        ReentrantLock reentrantLock = this.lock;
        boolean z = true;
        if (!this.fair && reentrantLock.tryLock()) {
            return true;
        }
        boolean interrupted = Thread.interrupted();
        try {
            long nanoTime = System.nanoTime();
            long j2 = safeNanos;
            while (true) {
                try {
                    try {
                        tryLock = reentrantLock.tryLock(j2, TimeUnit.NANOSECONDS);
                        break;
                    } catch (Throwable th) {
                        th = th;
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    j2 = remainingNanos(nanoTime, safeNanos);
                    interrupted = true;
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            return tryLock;
        } catch (Throwable th2) {
            th = th2;
            z = interrupted;
        }
    }

    public boolean enterInterruptibly(long j, TimeUnit timeUnit) {
        return this.lock.tryLock(j, timeUnit);
    }

    public boolean waitFor(Guard guard, long j, TimeUnit timeUnit) {
        long safeNanos = toSafeNanos(j, timeUnit);
        if (guard.monitor == this && this.lock.isHeldByCurrentThread()) {
            if (guard.isSatisfied()) {
                return true;
            }
            if (!Thread.interrupted()) {
                return awaitNanos(guard, safeNanos, true);
            }
            throw new InterruptedException();
        }
        throw new IllegalMonitorStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean waitForUninterruptibly(Guard guard, long j, TimeUnit timeUnit) {
        long safeNanos = toSafeNanos(j, timeUnit);
        if (guard.monitor == this && this.lock.isHeldByCurrentThread()) {
            boolean z = true;
            if (guard.isSatisfied()) {
                return true;
            }
            long initNanoTime = initNanoTime(safeNanos);
            boolean interrupted = Thread.interrupted();
            long j2 = safeNanos;
            boolean z2 = true;
            while (true) {
                try {
                    try {
                        boolean awaitNanos = awaitNanos(guard, j2, z2);
                        if (interrupted) {
                            Thread.currentThread().interrupt();
                        }
                        return awaitNanos;
                    } catch (Throwable th) {
                        th = th;
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    if (guard.isSatisfied()) {
                        Thread.currentThread().interrupt();
                        return true;
                    }
                    j2 = remainingNanos(initNanoTime, safeNanos);
                    z2 = false;
                    interrupted = true;
                } catch (Throwable th2) {
                    th = th2;
                    z = interrupted;
                    if (z) {
                    }
                    throw th;
                }
            }
        } else {
            throw new IllegalMonitorStateException();
        }
    }

    public boolean enterIf(Guard guard, long j, TimeUnit timeUnit) {
        if (guard.monitor == this) {
            if (!enter(j, timeUnit)) {
                return false;
            }
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                this.lock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean enterIfInterruptibly(Guard guard, long j, TimeUnit timeUnit) {
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            if (!reentrantLock.tryLock(j, timeUnit)) {
                return false;
            }
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
    
        if (awaitNanos(r11, r0, r3) != false) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean enterWhen(Guard guard, long j, TimeUnit timeUnit) {
        long initNanoTime;
        long safeNanos = toSafeNanos(j, timeUnit);
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            boolean z = false;
            try {
                if (!this.fair) {
                    if (!Thread.interrupted()) {
                        if (reentrantLock.tryLock()) {
                            initNanoTime = 0;
                            if (!guard.isSatisfied()) {
                                if (initNanoTime != 0) {
                                    safeNanos = remainingNanos(initNanoTime, safeNanos);
                                }
                            }
                            z = true;
                            if (!z) {
                            }
                            return z;
                        }
                    } else {
                        throw new InterruptedException();
                    }
                }
                if (!guard.isSatisfied()) {
                }
                z = true;
                if (!z) {
                }
                return z;
            } catch (Throwable th) {
                if (!isHeldByCurrentThread) {
                    try {
                        signalNextWaiter();
                    } finally {
                        reentrantLock.unlock();
                    }
                }
                throw th;
            }
            initNanoTime = initNanoTime(safeNanos);
            if (!reentrantLock.tryLock(j, timeUnit)) {
                return false;
            }
        } else {
            throw new IllegalMonitorStateException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f A[Catch: all -> 0x0023, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0023, blocks: (B:5:0x0012, B:7:0x001a, B:22:0x004f, B:33:0x005c, B:34:0x005f, B:35:0x0025, B:38:0x002a, B:13:0x0032, B:17:0x003d, B:18:0x0049, B:27:0x0045), top: B:4:0x0012, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean enterWhenUninterruptibly(Guard guard, long j, TimeUnit timeUnit) {
        long initNanoTime;
        long remainingNanos;
        long safeNanos = toSafeNanos(j, timeUnit);
        if (guard.monitor == this) {
            ReentrantLock reentrantLock = this.lock;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            boolean interrupted = Thread.interrupted();
            try {
                boolean z = true;
                if (!this.fair && reentrantLock.tryLock()) {
                    initNanoTime = 0;
                    while (!guard.isSatisfied()) {
                        try {
                            if (initNanoTime == 0) {
                                initNanoTime = initNanoTime(safeNanos);
                                remainingNanos = safeNanos;
                            } else {
                                remainingNanos = remainingNanos(initNanoTime, safeNanos);
                            }
                            z = awaitNanos(guard, remainingNanos, isHeldByCurrentThread);
                        } catch (InterruptedException unused) {
                            isHeldByCurrentThread = false;
                            interrupted = true;
                        } catch (Throwable th) {
                            reentrantLock.unlock();
                            throw th;
                        }
                    }
                    if (!z) {
                        reentrantLock.unlock();
                    }
                    if (interrupted) {
                        Thread.currentThread().interrupt();
                    }
                    return z;
                }
                initNanoTime = initNanoTime(safeNanos);
                long j2 = safeNanos;
                while (true) {
                    try {
                        try {
                            break;
                        } catch (Throwable th2) {
                            th = th2;
                            interrupted = true;
                            if (interrupted) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    } catch (InterruptedException unused2) {
                        j2 = remainingNanos(initNanoTime, safeNanos);
                        interrupted = true;
                    }
                }
                if (!reentrantLock.tryLock(j2, TimeUnit.NANOSECONDS)) {
                    if (interrupted) {
                        Thread.currentThread().interrupt();
                    }
                    return false;
                }
                while (!guard.isSatisfied()) {
                }
                if (!z) {
                }
                if (interrupted) {
                }
                return z;
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new IllegalMonitorStateException();
        }
    }
}
