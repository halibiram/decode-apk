package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
final class zzcek extends ScheduledThreadPoolExecutor {
    public zzcek(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }
}
