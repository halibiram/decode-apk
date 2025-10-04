package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
abstract class zzgcz extends zzged implements Runnable {

    @CheckForNull
    ListenableFuture zza;

    @CheckForNull
    Class zzb;

    @CheckForNull
    Object zzc;

    public zzgcz(ListenableFuture listenableFuture, Class cls, Object obj) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
        this.zzb = cls;
        this.zzc = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a0  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        boolean z;
        boolean z2;
        Throwable th;
        Object obj;
        ListenableFuture listenableFuture = this.zza;
        Class cls = this.zzb;
        Object obj2 = this.zzc;
        boolean z3 = false;
        if (listenableFuture == 0) {
            z = true;
        } else {
            z = false;
        }
        if (cls == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z4 = z | z2;
        if (obj2 == null) {
            z3 = true;
        }
        if (!(z3 | z4) && !isCancelled()) {
            this.zza = null;
            try {
                if (listenableFuture instanceof zzgfq) {
                    th = ((zzgfq) listenableFuture).zzl();
                } else {
                    th = null;
                }
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    String valueOf = String.valueOf(listenableFuture.getClass());
                    String valueOf2 = String.valueOf(e.getClass());
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-8299434417978689689L, 370133775831072313L, -8351071443928631757L}).toString());
                    sb.append(valueOf);
                    sb.append(new ObfuscatedString(new long[]{4740858563609850071L, 8919313653267284431L}).toString());
                    sb.append(valueOf2);
                    cause = new NullPointerException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2865415538414330270L, -5935440989457309346L, 7126434908535825947L}), sb));
                }
                th = cause;
            } catch (Throwable th2) {
                th = th2;
            }
            if (th == null) {
                obj = zzgen.zzp(listenableFuture);
                if (th != null) {
                    zzc(obj);
                    return;
                }
                if (cls.isInstance(th)) {
                    try {
                        Object zze = zze(obj2, th);
                        this.zzb = null;
                        this.zzc = null;
                        zzf(zze);
                        return;
                    } catch (Throwable th3) {
                        try {
                            zzgff.zza(th3);
                            zzd(th3);
                            return;
                        } finally {
                            this.zzb = null;
                            this.zzc = null;
                        }
                    }
                }
                zzs(listenableFuture);
                return;
            }
            obj = null;
            if (th != null) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    @CheckForNull
    public final String zza() {
        String obfuscatedString;
        ListenableFuture listenableFuture = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        String zza = super.zza();
        if (listenableFuture != null) {
            String obj2 = listenableFuture.toString();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8155626210938305168L, -5162876193148098950L, 2564344800706814242L}).toString());
            sb.append(obj2);
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8384827514518674712L, 1785081817616027224L}), sb);
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-214396911125421289L}).toString();
        }
        if (cls != null && obj != null) {
            String obj3 = cls.toString();
            String obj4 = obj.toString();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{2347918054769200372L, 7066035769388234336L, -2696360072441675018L}).toString());
            m3341xc20437a5.append(obj3);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-1626016930898232250L, -9115918344024513314L, 687815331091797010L}).toString());
            m3341xc20437a5.append(obj4);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4057253526328811384L, -3582868699647366016L}), m3341xc20437a5);
        }
        if (zza != null) {
            return obfuscatedString.concat(zza);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final void zzb() {
        zzr(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    public abstract Object zze(Object obj, Throwable th);

    public abstract void zzf(Object obj);
}
