package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class ListenerCallQueue<L> {
    private static final Logger logger = Logger.getLogger(ListenerCallQueue.class.getName());
    private final List<PerListenerQueue<L>> listeners = DesugarCollections.synchronizedList(new ArrayList());

    /* loaded from: classes2.dex */
    public interface Event<L> {
        void call(L l);
    }

    /* loaded from: classes2.dex */
    public static final class PerListenerQueue<L> implements Runnable {
        final Executor executor;

        @GuardedBy("this")
        boolean isThreadScheduled;
        final L listener;

        @GuardedBy("this")
        final Queue<Event<L>> waitQueue = Queues.newArrayDeque();

        @GuardedBy("this")
        final Queue<Object> labelQueue = Queues.newArrayDeque();

        public PerListenerQueue(L l, Executor executor) {
            this.listener = (L) Preconditions.checkNotNull(l);
            this.executor = (Executor) Preconditions.checkNotNull(executor);
        }

        public synchronized void add(Event<L> event, Object obj) {
            this.waitQueue.add(event);
            this.labelQueue.add(obj);
        }

        public void dispatch() {
            boolean z;
            synchronized (this) {
                try {
                    if (!this.isThreadScheduled) {
                        z = true;
                        this.isThreadScheduled = true;
                    } else {
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                try {
                    this.executor.execute(this);
                } catch (RuntimeException e) {
                    synchronized (this) {
                        this.isThreadScheduled = false;
                        Logger logger = ListenerCallQueue.logger;
                        Level level = Level.SEVERE;
                        String valueOf = String.valueOf(this.listener);
                        String valueOf2 = String.valueOf(this.executor);
                        StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 42);
                        sb.append(new ObfuscatedString(new long[]{-7134778479505421239L, 7151917153885811930L, -4027388595324452873L, 6173891761451113159L, -5086491824349600764L, 4227371526576405401L}).toString());
                        sb.append(valueOf);
                        logger.log(level, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4719646204233409396L, -39021844548844483L}), sb, valueOf2), (Throwable) e);
                        throw e;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        
            r2.call(r11.listener);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
        
            r4 = com.google.common.util.concurrent.ListenerCallQueue.logger;
            r5 = java.util.logging.Level.SEVERE;
            r6 = java.lang.String.valueOf(r11.listener);
            r3 = java.lang.String.valueOf(r3);
            r8 = new java.lang.StringBuilder((r6.length() + 37) + r3.length());
            r8.append(new com.panda912.muddy.ObfuscatedString(new long[]{-6917934406888821368L, -4698945995674591617L, 293264905309631134L, -8970590650351068450L, 7437902986329640226L, 6443939666034229613L}).toString());
            r8.append(r6);
            r8.append(new com.panda912.muddy.ObfuscatedString(new long[]{-7581853862868386844L, 6006397354915057095L}).toString());
            r8.append(r3);
            r4.log(r5, r8.toString(), (java.lang.Throwable) r2);
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Throwable th;
            boolean z;
            while (true) {
                boolean z2 = true;
                try {
                    synchronized (this) {
                        try {
                            Preconditions.checkState(this.isThreadScheduled);
                            Event<L> poll = this.waitQueue.poll();
                            Object poll2 = this.labelQueue.poll();
                            if (poll == null) {
                                this.isThreadScheduled = false;
                                try {
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z = false;
                                    while (true) {
                                        try {
                                            break;
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                    }
                                    throw th;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            z = true;
                        }
                    }
                    try {
                        break;
                        throw th;
                    } catch (Throwable th5) {
                        boolean z3 = z;
                        th = th5;
                        z2 = z3;
                        if (z2) {
                            synchronized (this) {
                                this.isThreadScheduled = false;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }
        }
    }

    private void enqueueHelper(Event<L> event, Object obj) {
        Preconditions.checkNotNull(event, new ObfuscatedString(new long[]{4179193596546925649L, -2441596231757330741L}).toString());
        Preconditions.checkNotNull(obj, new ObfuscatedString(new long[]{-8037187098197162727L, -7175610547768874288L}).toString());
        synchronized (this.listeners) {
            try {
                Iterator<PerListenerQueue<L>> it = this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().add(event, obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addListener(L l, Executor executor) {
        Preconditions.checkNotNull(l, new ObfuscatedString(new long[]{-3651053829507535055L, -3810100910284567944L}).toString());
        Preconditions.checkNotNull(executor, new ObfuscatedString(new long[]{-1087087806838370093L, -4950689708286363106L}).toString());
        this.listeners.add(new PerListenerQueue<>(l, executor));
    }

    public void dispatch() {
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).dispatch();
        }
    }

    public void enqueue(Event<L> event) {
        enqueueHelper(event, event);
    }

    public void enqueue(Event<L> event, String str) {
        enqueueHelper(event, str);
    }
}
