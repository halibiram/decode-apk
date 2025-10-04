package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcdr {
    public static final ThreadPoolExecutor zza = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, TimeUnit.SECONDS, new SynchronousQueue(), new zzcdq(new ObfuscatedString(new long[]{8882424754883351998L, 7025364089209252509L, -4635526652202018529L}).toString()));
    public static final ExecutorService zzb = Executors.newSingleThreadExecutor(new zzcdq(new ObfuscatedString(new long[]{-5353818443796498521L, -5357578829504719409L, -4478915383827967555L}).toString()));
}
