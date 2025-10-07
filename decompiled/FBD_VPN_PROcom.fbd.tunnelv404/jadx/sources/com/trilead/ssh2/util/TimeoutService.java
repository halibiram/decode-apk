package com.trilead.ssh2.util;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class TimeoutService {
    private static final ScheduledExecutorService scheduler;
    private static final ThreadFactory threadFactory;

    /* loaded from: classes3.dex */
    public static class TimeoutToken implements Runnable {
        private boolean cancelled = false;
        private Runnable handler;

        @Override // java.lang.Runnable
        public void run() {
            if (!this.cancelled) {
                this.handler.run();
            }
        }
    }

    static {
        ThreadFactory threadFactory2 = new ThreadFactory() { // from class: com.trilead.ssh2.util.TimeoutService.1
            private AtomicInteger count = new AtomicInteger();

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                int incrementAndGet = this.count.incrementAndGet();
                Thread thread = new Thread(runnable, AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1877212048690231865L, -369175903335725263L, -547287242580295050L}), new StringBuilder(), incrementAndGet));
                thread.setDaemon(true);
                return thread;
            }
        };
        threadFactory = threadFactory2;
        scheduler = Executors.newScheduledThreadPool(20, threadFactory2);
    }

    public static final TimeoutToken addTimeoutHandler(long j, Runnable runnable) {
        TimeoutToken timeoutToken = new TimeoutToken();
        timeoutToken.handler = runnable;
        long currentTimeMillis = j - System.currentTimeMillis();
        if (currentTimeMillis < 0) {
            currentTimeMillis = 0;
        }
        scheduler.schedule(timeoutToken, currentTimeMillis, TimeUnit.MILLISECONDS);
        return timeoutToken;
    }

    public static final void cancelTimeoutHandler(TimeoutToken timeoutToken) {
        timeoutToken.cancelled = true;
    }
}
