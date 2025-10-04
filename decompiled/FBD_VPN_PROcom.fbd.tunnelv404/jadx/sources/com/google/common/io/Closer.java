package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Closer implements Closeable {
    private static final Suppressor SUPPRESSOR;
    private final Deque<Closeable> stack = new ArrayDeque(4);

    @VisibleForTesting
    final Suppressor suppressor;

    @CheckForNull
    private Throwable thrown;

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class LoggingSuppressor implements Suppressor {
        static final LoggingSuppressor INSTANCE = new LoggingSuppressor();

        @Override // com.google.common.io.Closer.Suppressor
        public void suppress(Closeable closeable, Throwable th, Throwable th2) {
            Logger logger = Closeables.logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(closeable);
            logger.log(level, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-6821627025606717238L, -1434045738275523352L, -911012976031087512L, 6489894256470455960L, -8618087130735876175L, 4169784563393776341L, 3572432584622086622L}), new StringBuilder(valueOf.length() + 42), valueOf), th2);
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class SuppressingSuppressor implements Suppressor {
        private final Method addSuppressed;

        private SuppressingSuppressor(Method method) {
            this.addSuppressed = method;
        }

        @CheckForNull
        public static SuppressingSuppressor tryCreate() {
            try {
                return new SuppressingSuppressor(Throwable.class.getMethod(new ObfuscatedString(new long[]{-7243262312007231767L, -2854582537964166461L, -1189426034999460509L}).toString(), Throwable.class));
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.google.common.io.Closer.Suppressor
        public void suppress(Closeable closeable, Throwable th, Throwable th2) {
            if (th == th2) {
                return;
            }
            try {
                this.addSuppressed.invoke(th, th2);
            } catch (Throwable unused) {
                LoggingSuppressor.INSTANCE.suppress(closeable, th, th2);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public interface Suppressor {
        void suppress(Closeable closeable, Throwable th, Throwable th2);
    }

    static {
        Suppressor tryCreate = SuppressingSuppressor.tryCreate();
        if (tryCreate == null) {
            tryCreate = LoggingSuppressor.INSTANCE;
        }
        SUPPRESSOR = tryCreate;
    }

    @VisibleForTesting
    public Closer(Suppressor suppressor) {
        this.suppressor = (Suppressor) Preconditions.checkNotNull(suppressor);
    }

    public static Closer create() {
        return new Closer(SUPPRESSOR);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Throwable th = this.thrown;
        while (!this.stack.isEmpty()) {
            Closeable removeFirst = this.stack.removeFirst();
            try {
                removeFirst.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.suppressor.suppress(removeFirst, th, th2);
                }
            }
        }
        if (this.thrown == null && th != null) {
            Throwables.propagateIfPossible(th, IOException.class);
            throw new AssertionError(th);
        }
    }

    @CanIgnoreReturnValue
    @ParametricNullness
    public <C extends Closeable> C register(@ParametricNullness C c) {
        if (c != null) {
            this.stack.addFirst(c);
        }
        return c;
    }

    public RuntimeException rethrow(Throwable th) {
        Preconditions.checkNotNull(th);
        this.thrown = th;
        Throwables.propagateIfPossible(th, IOException.class);
        throw new RuntimeException(th);
    }

    public <X extends Exception> RuntimeException rethrow(Throwable th, Class<X> cls) {
        Preconditions.checkNotNull(th);
        this.thrown = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls);
        throw new RuntimeException(th);
    }

    public <X1 extends Exception, X2 extends Exception> RuntimeException rethrow(Throwable th, Class<X1> cls, Class<X2> cls2) {
        Preconditions.checkNotNull(th);
        this.thrown = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls, cls2);
        throw new RuntimeException(th);
    }
}
