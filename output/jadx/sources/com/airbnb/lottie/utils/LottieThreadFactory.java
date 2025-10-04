package com.airbnb.lottie.utils;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class LottieThreadFactory implements ThreadFactory {
    private static final AtomicInteger poolNumber = new AtomicInteger(1);
    private final ThreadGroup group;
    private final String namePrefix;
    private final AtomicInteger threadNumber = new AtomicInteger(1);

    public LottieThreadFactory() {
        ThreadGroup threadGroup;
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager == null) {
            threadGroup = Thread.currentThread().getThreadGroup();
        } else {
            threadGroup = securityManager.getThreadGroup();
        }
        this.group = threadGroup;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{695264384657281668L, 7532468386483310851L}).toString());
        sb.append(poolNumber.getAndIncrement());
        this.namePrefix = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-9196556372306743807L, 5241996891629867376L}), sb);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.group, runnable, this.namePrefix + this.threadNumber.getAndIncrement(), 0L);
        thread.setDaemon(false);
        thread.setPriority(10);
        return thread;
    }
}
