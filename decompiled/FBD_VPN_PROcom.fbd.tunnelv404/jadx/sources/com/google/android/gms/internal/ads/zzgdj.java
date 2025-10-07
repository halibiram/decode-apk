package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzgdj extends zzged implements Runnable {
    public static final /* synthetic */ int zzc = 0;

    @CheckForNull
    ListenableFuture zza;

    @CheckForNull
    Object zzb;

    public zzgdj(ListenableFuture listenableFuture, Object obj) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
        this.zzb = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        ListenableFuture listenableFuture = this.zza;
        Object obj = this.zzb;
        boolean isCancelled = isCancelled();
        boolean z2 = true;
        if (listenableFuture == null) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = isCancelled | z;
        if (obj != null) {
            z2 = false;
        }
        if (z3 | z2) {
            return;
        }
        this.zza = null;
        if (listenableFuture.isCancelled()) {
            zzs(listenableFuture);
            return;
        }
        try {
            try {
                Object zze = zze(obj, zzgen.zzp(listenableFuture));
                this.zzb = null;
                zzf(zze);
            } catch (Throwable th) {
                try {
                    zzgff.zza(th);
                    zzd(th);
                } finally {
                    this.zzb = null;
                }
            }
        } catch (Error e) {
            zzd(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            zzd(e2.getCause());
        } catch (Exception e3) {
            zzd(e3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    @CheckForNull
    public final String zza() {
        String obfuscatedString;
        ListenableFuture listenableFuture = this.zza;
        Object obj = this.zzb;
        String zza = super.zza();
        if (listenableFuture != null) {
            String obj2 = listenableFuture.toString();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-5448075095269522004L, -6379763492010085475L, 4107128930568152332L}).toString());
            sb.append(obj2);
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3591181320001313671L, -5523889831956101829L}), sb);
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{2486126793020934255L}).toString();
        }
        if (obj != null) {
            String obj3 = obj.toString();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-4214730132546470468L, 4177733920872015869L, -2521517784941090474L}).toString());
            m3341xc20437a5.append(obj3);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4979070925640220882L, -8986652891371585535L}), m3341xc20437a5);
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
    }

    public abstract Object zze(Object obj, Object obj2);

    public abstract void zzf(Object obj);
}
