package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzgew extends AtomicReference implements Runnable {
    private static final Runnable zza = new zzgev(null);
    private static final Runnable zzb = new zzgev(null);

    private final void zzc(Thread thread) {
        Runnable runnable = (Runnable) get();
        zzget zzgetVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            if (!(runnable instanceof zzget)) {
                if (runnable != zzb) {
                    break;
                }
            } else {
                zzgetVar = (zzget) runnable;
            }
            i++;
            if (i > 1000) {
                Runnable runnable2 = zzb;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    if (Thread.interrupted() || z) {
                        z = true;
                    } else {
                        z = false;
                    }
                    LockSupport.park(zzgetVar);
                }
            } else {
                Thread.yield();
            }
            runnable = (Runnable) get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean zzg = zzg();
            if (!zzg) {
                try {
                    obj = zza();
                } catch (Throwable th) {
                    try {
                        zzgff.zza(th);
                        if (!compareAndSet(currentThread, zza)) {
                            zzc(currentThread);
                        }
                        zzd(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(currentThread, zza)) {
                            zzc(currentThread);
                        }
                        zze(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(currentThread, zza)) {
                zzc(currentThread);
            }
            if (!zzg) {
                zze(obj);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String obfuscatedString;
        Runnable runnable = (Runnable) get();
        if (runnable == zza) {
            obfuscatedString = new ObfuscatedString(new long[]{-8577680022415010718L, -1496456654480442900L, 2680763983553804550L}).toString();
        } else if (runnable instanceof zzget) {
            obfuscatedString = new ObfuscatedString(new long[]{514736265140438083L, 5698735279072186963L, -2475897225294437944L, -7921196042922673617L}).toString();
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-4384583388171131240L, 6445473759293060391L, -120689916637601196L, 7409719196053199391L}).toString());
            sb.append(name);
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5981378221683670326L, -2066015551442166833L}), sb);
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{8005074975662962901L, -4887333053169512974L, -6144791324669332680L, 9024209704836667536L, 1298239555299344788L}).toString();
        }
        String zzb2 = zzb();
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{6941448623670395122L, -5654621685993269143L}), AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString), zzb2);
    }

    public abstract Object zza();

    public abstract String zzb();

    public abstract void zzd(Throwable th);

    public abstract void zze(Object obj);

    public abstract boolean zzg();

    public final void zzh() {
        Runnable runnable = (Runnable) get();
        if (runnable instanceof Thread) {
            zzget zzgetVar = new zzget(this, null);
            zzgetVar.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, zzgetVar)) {
                try {
                    Thread thread = (Thread) runnable;
                    thread.interrupt();
                    if (((Runnable) getAndSet(zza)) == zzb) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th) {
                    if (((Runnable) getAndSet(zza)) == zzb) {
                        LockSupport.unpark((Thread) runnable);
                    }
                    throw th;
                }
            }
        }
    }
}
