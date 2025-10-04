package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.ClientLibraryUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcep {
    public static final zzgey zza;
    public static final zzgey zzb;
    public static final zzgey zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzgey zze;
    public static final zzgey zzf;

    static {
        Executor threadPoolExecutor;
        Executor executor;
        Executor executor2;
        if (ClientLibraryUtils.isPackageSide()) {
            zzfts.zza();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzcel(new ObfuscatedString(new long[]{-7678458804963620407L, -7964121217303870122L}).toString())));
        } else {
            threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcel(new ObfuscatedString(new long[]{-3395235807446194046L, 5427235436153762742L}).toString()));
        }
        zzcen zzcenVar = null;
        zza = new zzceo(threadPoolExecutor, zzcenVar);
        if (ClientLibraryUtils.isPackageSide()) {
            executor = zzfts.zza().zzc(5, new zzcel(new ObfuscatedString(new long[]{3016059351383546941L, -3114954902002511863L}).toString()), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcel(new ObfuscatedString(new long[]{2246682659200216269L, 6250675207874472534L}).toString()));
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
            executor = threadPoolExecutor2;
        }
        zzb = new zzceo(executor, zzcenVar);
        if (ClientLibraryUtils.isPackageSide()) {
            executor2 = zzfts.zza().zzb(new zzcel(new ObfuscatedString(new long[]{-6280435405074450197L, -8115859292271077433L, -2353811806337026498L}).toString()), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcel(new ObfuscatedString(new long[]{1585979432942774580L, -7850824181541668400L, -5434464261571326648L}).toString()));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executor2 = threadPoolExecutor3;
        }
        zzc = new zzceo(executor2, zzcenVar);
        zzd = new zzcek(3, new zzcel(new ObfuscatedString(new long[]{670098671564235080L, -6552347302711563180L}).toString()));
        zze = new zzceo(new zzcem(), zzcenVar);
        zzf = new zzceo(zzgfe.zzb(), zzcenVar);
    }
}
