package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.j2objc.annotations.ReflectionSupport;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
@ReflectionSupport(ReflectionSupport.Level.FULL)
/* loaded from: classes2.dex */
public abstract class InterruptibleTask<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable DONE;
    private static final int MAX_BUSY_WAIT_SPINS = 1000;
    private static final Runnable PARKED;

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class Blocker extends AbstractOwnableSynchronizer implements Runnable {
        private final InterruptibleTask<?> task;

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwner(Thread thread) {
            setExclusiveOwnerThread(thread);
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return this.task.toString();
        }

        private Blocker(InterruptibleTask<?> interruptibleTask) {
            this.task = interruptibleTask;
        }
    }

    /* loaded from: classes2.dex */
    public static final class DoNothingRunnable implements Runnable {
        private DoNothingRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    static {
        DONE = new DoNothingRunnable();
        PARKED = new DoNothingRunnable();
    }

    private void waitForInterrupt(Thread thread) {
        Runnable runnable = get();
        Blocker blocker = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof Blocker;
            if (!z2 && runnable != PARKED) {
                break;
            }
            if (z2) {
                blocker = (Blocker) runnable;
            }
            i++;
            if (i > 1000) {
                Runnable runnable2 = PARKED;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    if (!Thread.interrupted() && !z) {
                        z = false;
                    } else {
                        z = true;
                    }
                    LockSupport.park(blocker);
                }
            } else {
                Thread.yield();
            }
            runnable = get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    public abstract void afterRanInterruptiblyFailure(Throwable th);

    public abstract void afterRanInterruptiblySuccess(@ParametricNullness T t);

    public final void interruptTask() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            Blocker blocker = new Blocker();
            blocker.setOwner(Thread.currentThread());
            if (compareAndSet(runnable, blocker)) {
                try {
                    ((Thread) runnable).interrupt();
                } finally {
                    if (getAndSet(DONE) == PARKED) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    public abstract boolean isDone();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (!compareAndSet(null, currentThread)) {
            return;
        }
        boolean isDone = isDone();
        if (!isDone) {
            try {
                obj = runInterruptibly();
            } catch (Throwable th) {
                if (!compareAndSet(currentThread, DONE)) {
                    waitForInterrupt(currentThread);
                }
                if (!isDone) {
                    afterRanInterruptiblyFailure(th);
                    return;
                }
                return;
            }
        }
        if (!compareAndSet(currentThread, DONE)) {
            waitForInterrupt(currentThread);
        }
        if (!isDone) {
            afterRanInterruptiblySuccess(NullnessCasts.uncheckedCastNullableTToT(obj));
        }
    }

    @ParametricNullness
    public abstract T runInterruptibly();

    public abstract String toPendingString();

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String obfuscatedString;
        Runnable runnable = get();
        if (runnable == DONE) {
            obfuscatedString = new ObfuscatedString(new long[]{984383768121955119L, 7680987473122196015L, -8412791816932931733L}).toString();
        } else if (runnable instanceof Blocker) {
            obfuscatedString = new ObfuscatedString(new long[]{-1625946983781950966L, 3968597763312400222L, -3541987093991854307L, 6016378236109032830L}).toString();
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(21, name));
            sb.append(new ObfuscatedString(new long[]{-7618858744586034726L, -2597915129906788504L, 5696727184031751195L, 3465149558796299663L}).toString());
            sb.append(name);
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8037578700645029789L, 178940579244197458L}), sb);
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-1789146022259697310L, -5410102885862661820L, 8155262074641802699L, 1983594363237841853L, -5081134602031031471L}).toString();
        }
        String pendingString = toPendingString();
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-349129631347417988L, 5249961413600901271L}), AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(2, obfuscatedString), pendingString), obfuscatedString), pendingString);
    }
}
